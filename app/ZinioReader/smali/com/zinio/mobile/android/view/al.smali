.class final Lcom/zinio/mobile/android/view/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c()V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 188
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->T()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->c()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 188
    :cond_1
    const v0, 0x7f080040

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->t()Lcom/zinio/mobile/android/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/k;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    goto :goto_1

    .line 198
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0

    .line 209
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d()V

    goto/16 :goto_0

    .line 212
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 215
    :sswitch_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 218
    :sswitch_7
    iget-object v0, p0, Lcom/zinio/mobile/android/view/al;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto/16 :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_7
        0x7f0c0001 -> :sswitch_4
        0x7f0c0002 -> :sswitch_5
        0x7f0c0003 -> :sswitch_6
        0x7f0c0023 -> :sswitch_3
        0x7f0c0024 -> :sswitch_0
        0x7f0c0025 -> :sswitch_2
        0x7f0c0026 -> :sswitch_1
    .end sparse-switch
.end method
