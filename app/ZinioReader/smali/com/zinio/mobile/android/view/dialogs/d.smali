.class final Lcom/zinio/mobile/android/view/dialogs/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/dialogs/d;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/d;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 703
    packed-switch p2, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 705
    :pswitch_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->f()V

    .line 706
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/d;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/view/dialogs/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a;->l:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/d;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/view/dialogs/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 708
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
