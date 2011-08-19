.class final Lcom/zinio/mobile/android/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 57
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c()V

    goto :goto_0

    .line 60
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b()V

    goto :goto_0

    .line 63
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b()V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 63
    goto :goto_1

    .line 67
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->finish()V

    goto :goto_0

    .line 70
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 73
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :sswitch_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/i;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_6
        0x7f0c0001 -> :sswitch_3
        0x7f0c0002 -> :sswitch_4
        0x7f0c0003 -> :sswitch_5
        0x7f0c0012 -> :sswitch_2
        0x7f0c0013 -> :sswitch_1
        0x7f0c0014 -> :sswitch_0
    .end sparse-switch
.end method
