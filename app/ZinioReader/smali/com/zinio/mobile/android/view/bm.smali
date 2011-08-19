.class final Lcom/zinio/mobile/android/view/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 194
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "date"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 204
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 210
    :goto_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2

    .line 214
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 218
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->c(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    goto :goto_0

    .line 222
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->d(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    goto :goto_0

    .line 226
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bm;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_5
        0x7f0c0002 -> :sswitch_2
        0x7f0c0003 -> :sswitch_4
        0x7f0c0042 -> :sswitch_0
        0x7f0c0043 -> :sswitch_1
        0x7f0c0044 -> :sswitch_3
    .end sparse-switch
.end method
