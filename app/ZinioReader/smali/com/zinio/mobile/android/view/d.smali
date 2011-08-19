.class final Lcom/zinio/mobile/android/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 95
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->finish()V

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    const-string v1, "date"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 108
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2

    .line 118
    :sswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v1, Lcom/zinio/mobile/android/view/cd;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/cd;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 123
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/d;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->c(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto/16 :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_4
        0x7f0c0042 -> :sswitch_1
        0x7f0c0043 -> :sswitch_2
        0x7f0c0046 -> :sswitch_0
        0x7f0c004b -> :sswitch_3
    .end sparse-switch
.end method
