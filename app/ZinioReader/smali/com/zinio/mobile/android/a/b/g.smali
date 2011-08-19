.class final Lcom/zinio/mobile/android/a/b/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 139
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    :cond_2
    :goto_1
    invoke-static {}, Lcom/zinio/mobile/android/view/LibraryActivity;->b()V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/b/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/s;->g()V

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/b/s;)Lcom/zinio/mobile/android/a/b/s;

    .line 151
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->b()V

    .line 152
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->j()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/a/b/aa;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/aa;

    .line 154
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v2}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zinio/mobile/android/a/b/aa;->a(Lcom/zinio/mobile/android/a/b/s;)V

    goto :goto_2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 160
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    goto :goto_3

    .line 162
    :cond_6
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/s;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->e()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 163
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(I)V

    .line 164
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->d()V

    goto/16 :goto_1

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/a/b/aa;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/aa;

    .line 168
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v2}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zinio/mobile/android/a/b/aa;->a(Lcom/zinio/mobile/android/a/b/s;)V

    goto :goto_4

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    .line 178
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/x;)V

    goto/16 :goto_1

    .line 184
    :pswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    .line 188
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    goto/16 :goto_1

    .line 195
    :pswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/a/b/aa;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/aa;

    .line 196
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/b/aa;->d()V

    goto :goto_5

    .line 201
    :pswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/a/b/aa;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->d(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/aa;

    .line 202
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/b/aa;->e()V

    goto :goto_6

    .line 207
    :pswitch_6
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/b/l;)V

    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    .line 212
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->c()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Lcom/zinio/mobile/android/a/a/d;

    invoke-direct {v2}, Lcom/zinio/mobile/android/a/a/d;-><init>()V

    .line 216
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->f()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/k;->e()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v4, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v4}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v4

    new-instance v5, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v5, v3, v0}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 220
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v1, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/b/a/m;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_7
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/d;->a()Lcom/zinio/mobile/android/a/a/ab;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v2}, Lcom/zinio/mobile/android/a/b/l;->d(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v2}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/b/l;)V

    .line 232
    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/ab;)V

    .line 233
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/y;)V

    goto/16 :goto_1

    .line 224
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    .line 225
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->j()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    goto :goto_7

    .line 239
    :pswitch_7
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/resources/download/b;

    .line 243
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/b;->a()I

    move-result v0

    .line 251
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v0

    .line 253
    :goto_8
    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/x;)V

    goto/16 :goto_1

    .line 251
    :cond_8
    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v0

    goto :goto_8

    .line 257
    :pswitch_8
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/g;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/a/b/aa;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->e(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/aa;

    .line 258
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/b/aa;->g()V

    goto :goto_9

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
