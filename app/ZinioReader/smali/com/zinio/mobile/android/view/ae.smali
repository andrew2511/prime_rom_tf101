.class final Lcom/zinio/mobile/android/view/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->f(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->g(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 171
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->h(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    goto :goto_0

    .line 174
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->i(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    goto :goto_0

    .line 177
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->j(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    goto :goto_0

    .line 180
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->l(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->k(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->finish()V

    goto :goto_0

    .line 191
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 194
    :sswitch_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :sswitch_7
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ae;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->m(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_7
        0x7f0c0001 -> :sswitch_4
        0x7f0c0002 -> :sswitch_5
        0x7f0c0003 -> :sswitch_6
        0x7f0c0080 -> :sswitch_3
        0x7f0c0081 -> :sswitch_1
        0x7f0c0082 -> :sswitch_0
        0x7f0c0084 -> :sswitch_2
    .end sparse-switch
.end method
