.class final Lcom/zinio/mobile/android/view/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->finish()V

    goto :goto_0

    .line 87
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Z)V

    goto :goto_0

    .line 91
    :sswitch_2
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v1, Lcom/zinio/mobile/android/view/aw;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/aw;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ca;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0044 -> :sswitch_1
        0x7f0c004b -> :sswitch_2
        0x7f0c004d -> :sswitch_0
    .end sparse-switch
.end method
