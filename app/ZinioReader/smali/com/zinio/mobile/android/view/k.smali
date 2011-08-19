.class final Lcom/zinio/mobile/android/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LoginActivity;->a(Lcom/zinio/mobile/android/view/LoginActivity;)Lcom/zinio/mobile/android/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/util/e;->b()V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LoginActivity;->b(Lcom/zinio/mobile/android/view/LoginActivity;)Z

    .line 73
    iget-object v0, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LoginActivity;->showDialog(I)V

    .line 74
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->i()V

    .line 77
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v1

    iget-object v1, v1, Lcom/zinio/mobile/android/c/g;->c:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/k;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0c0055
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
