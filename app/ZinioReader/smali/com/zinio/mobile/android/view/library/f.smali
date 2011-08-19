.class final Lcom/zinio/mobile/android/view/library/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/t;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/t;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 288
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->d()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 295
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 297
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto :goto_0

    .line 301
    :pswitch_2
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v2, v0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/b/f;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/f;->a()Lcom/zinio/mobile/android/b/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/b/c;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 304
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 305
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 307
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto :goto_0

    .line 311
    :pswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 314
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 316
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto :goto_0

    .line 320
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 321
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v2, v3}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(J)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 328
    :pswitch_5
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 331
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 333
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 339
    :pswitch_6
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a1

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 340
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 342
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 347
    :pswitch_7
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080090

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 348
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 350
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/f;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
