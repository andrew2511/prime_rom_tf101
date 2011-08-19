.class final Lcom/zinio/mobile/android/view/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/MoreActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v1

    iget-object v1, v1, Lcom/zinio/mobile/android/c/g;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    goto :goto_1

    .line 117
    :sswitch_4
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->h()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 122
    :sswitch_5
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    :sswitch_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 132
    :sswitch_7
    iget-object v0, p0, Lcom/zinio/mobile/android/view/v;->a:Lcom/zinio/mobile/android/view/MoreActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/MoreActivity;->a(Lcom/zinio/mobile/android/view/MoreActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto/16 :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_7
        0x7f0c005e -> :sswitch_0
        0x7f0c005f -> :sswitch_1
        0x7f0c0060 -> :sswitch_4
        0x7f0c0061 -> :sswitch_2
        0x7f0c0062 -> :sswitch_3
        0x7f0c0064 -> :sswitch_5
        0x7f0c0065 -> :sswitch_6
    .end sparse-switch
.end method
