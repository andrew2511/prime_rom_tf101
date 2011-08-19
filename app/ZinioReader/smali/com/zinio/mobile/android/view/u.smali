.class final Lcom/zinio/mobile/android/view/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/MoreActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zinio/mobile/android/view/u;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/u;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->removeDialog(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
