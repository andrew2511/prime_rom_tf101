.class public final Lcom/zinio/mobile/android/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 493
    const v1, 0x59203e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    return-void
.end method

.method public static final a(Lcom/zinio/mobile/android/a/a/j;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->I()Ljava/util/List;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 328
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/i;

    .line 315
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 325
    :cond_1
    const v0, 0x7f080046

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/view/cf;)V
    .locals 8
    .parameter

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 426
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    move-object v2, v1

    .line 444
    :goto_0
    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 450
    const v2, 0x7f08006c

    const v3, 0x7f08006b

    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(II)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 479
    :goto_1
    return-void

    .line 454
    :cond_1
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v1

    .line 460
    iget-boolean v3, v1, Lcom/zinio/mobile/android/c/g;->f:Z

    if-eqz v3, :cond_2

    .line 461
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_1

    .line 465
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v3

    .line 466
    if-eqz v3, :cond_5

    .line 468
    iget-object v4, v1, Lcom/zinio/mobile/android/c/g;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/c/f;->f()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x5b

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v4

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\\]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v4

    .line 470
    :cond_4
    invoke-static {v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 471
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 474
    :cond_5
    sget-object v1, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 279
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 281
    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->p()V

    .line 113
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    div-int/lit8 v0, p1, 0x2

    .line 69
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 72
    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->a(I)V

    move v0, v2

    .line 96
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 77
    goto :goto_0

    .line 82
    :cond_1
    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 84
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/a/j;->a(I)V

    move v0, v2

    .line 86
    goto :goto_0

    .line 91
    :cond_2
    if-nez p1, :cond_3

    .line 92
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/a/a/j;->a(I)V

    :cond_3
    move v0, v3

    .line 96
    goto :goto_0
.end method

.method public static b(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->p()V

    .line 138
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    move-result v0

    goto :goto_0
.end method
