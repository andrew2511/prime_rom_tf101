.class final Lcom/zinio/mobile/android/view/library/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 416
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    .line 417
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 419
    :pswitch_1
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->d()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 421
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 423
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 425
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 429
    :pswitch_2
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v2, v0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/b/f;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/f;->a()Lcom/zinio/mobile/android/b/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/b/c;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 433
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 435
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 439
    :pswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 441
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 442
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 444
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 448
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 449
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v2, v3}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(J)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 456
    :pswitch_5
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 458
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 459
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 461
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 466
    :pswitch_6
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a1

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 467
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 469
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 474
    :pswitch_7
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080090

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 475
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 477
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/q;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
