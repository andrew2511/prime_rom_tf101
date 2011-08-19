.class final Lcom/zinio/mobile/android/view/a/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/a/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/a/c;->a(Lcom/zinio/mobile/android/view/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/a/a;

    .line 42
    iget-object v2, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/a/c;->b(Lcom/zinio/mobile/android/view/a/c;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/a/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/a/c;->a(Lcom/zinio/mobile/android/view/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 48
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 49
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 50
    iget-object v2, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/a/c;->a(Lcom/zinio/mobile/android/view/a/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/a/a;

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/a/a;->a(II)V

    goto :goto_2

    .line 56
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    .line 57
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a/b;->a:Lcom/zinio/mobile/android/view/a/c;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/a/c;->a(Lcom/zinio/mobile/android/view/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/a/a;

    .line 58
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/a/a;->a(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
