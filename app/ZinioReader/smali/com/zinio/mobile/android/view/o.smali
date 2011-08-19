.class final Lcom/zinio/mobile/android/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->b()V

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

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

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->c(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->c(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 140
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->d(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->d(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 144
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/o;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0058 -> :sswitch_4
        0x7f0c0072 -> :sswitch_0
        0x7f0c0073 -> :sswitch_2
        0x7f0c0075 -> :sswitch_3
        0x7f0c0077 -> :sswitch_1
    .end sparse-switch
.end method
