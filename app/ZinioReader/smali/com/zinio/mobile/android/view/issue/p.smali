.class final Lcom/zinio/mobile/android/view/issue/p;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/issue/o;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/issue/o;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/p;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/p;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/o;->a(Lcom/zinio/mobile/android/view/issue/o;)Lcom/zinio/mobile/android/view/issue/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/p;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/o;->a(Lcom/zinio/mobile/android/view/issue/o;)Lcom/zinio/mobile/android/view/issue/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/zinio/mobile/android/view/issue/b;->a()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
