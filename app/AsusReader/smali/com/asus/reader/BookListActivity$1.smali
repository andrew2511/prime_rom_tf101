.class Lcom/asus/reader/BookListActivity$1;
.super Landroid/os/Handler;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 247
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$000(Lcom/asus/reader/BookListActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$100(Lcom/asus/reader/BookListActivity;)V

    .line 253
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0, v4, v5}, Lcom/asus/reader/BookListActivity;->access$002(Lcom/asus/reader/BookListActivity;J)J

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/CategoryListView;->setAdapter(Landroid/widget/BaseExpandableListAdapter;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/database/Cursor;

    invoke-static {v0, p0}, Lcom/asus/reader/BookListActivity;->access$400(Lcom/asus/reader/BookListActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$500(Lcom/asus/reader/BookListActivity;)V

    goto :goto_0

    .line 267
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/database/Cursor;

    invoke-static {v0, p0}, Lcom/asus/reader/BookListActivity;->access$600(Lcom/asus/reader/BookListActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 270
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/reader/BookListActivity;->access$700(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_7
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/reader/BookListActivity;->access$800(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_8
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$900(Lcom/asus/reader/BookListActivity;)V

    goto :goto_0

    .line 279
    :pswitch_9
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1000(Lcom/asus/reader/BookListActivity;)V

    goto :goto_0

    .line 282
    :pswitch_a
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1100(Lcom/asus/reader/BookListActivity;)V

    goto :goto_0

    .line 285
    :pswitch_b
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.LIST_BOOK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :pswitch_c
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/reader/BookListActivity;->access$1200(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :pswitch_d
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1300(Lcom/asus/reader/BookListActivity;)V

    goto/16 :goto_0

    .line 294
    :pswitch_e
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1400(Lcom/asus/reader/BookListActivity;)V

    goto/16 :goto_0

    .line 297
    :pswitch_f
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 300
    :pswitch_10
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 303
    :pswitch_11
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 306
    :pswitch_12
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0, p0}, Lcom/asus/reader/DrmDialogUtil;->showDrmSettingDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1502(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 307
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1500()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    :pswitch_13
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1500()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    :try_start_1
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 325
    :pswitch_14
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const v3, 0x7f070084

    invoke-virtual {v2, v3}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1602(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 332
    :pswitch_15
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1600()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    :try_start_2
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1600()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 335
    :catch_2
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 341
    :pswitch_16
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/reader/DrmDialogUtil;->showDrmProcessResult(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1702(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 343
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1700()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 346
    :pswitch_17
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1700()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    :try_start_3
    invoke-static {}, Lcom/asus/reader/BookListActivity;->access$1700()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 349
    :catch_3
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 355
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const-class v2, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v1, v0}, Lcom/asus/reader/BookListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 360
    :pswitch_19
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1800(Lcom/asus/reader/BookListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 361
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$1802(Lcom/asus/reader/BookListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 362
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->clearChoices()V

    .line 363
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2000(Lcom/asus/reader/BookListActivity;)V

    goto/16 :goto_0

    .line 366
    :pswitch_1a
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1800(Lcom/asus/reader/BookListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto/16 :goto_0

    .line 369
    :pswitch_1b
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1800(Lcom/asus/reader/BookListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1800(Lcom/asus/reader/BookListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0

    .line 373
    :pswitch_1c
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$1;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2100(Lcom/asus/reader/BookListActivity;)V

    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x4c3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_2
        :pswitch_18
    .end packed-switch
.end method
