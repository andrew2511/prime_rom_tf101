.class final Lcom/zinio/mobile/android/view/bn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->f:J

    goto :goto_0

    .line 169
    :pswitch_1
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 170
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->removeDialog(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->c()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bn;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->f:J

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
