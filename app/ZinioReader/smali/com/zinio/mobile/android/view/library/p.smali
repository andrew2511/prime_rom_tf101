.class final Lcom/zinio/mobile/android/view/library/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/c;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/p;->a:Lcom/zinio/mobile/android/view/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/p;->a:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    .line 584
    :goto_0
    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/p;->a:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/p;->a:Lcom/zinio/mobile/android/view/library/c;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 599
    return-void

    :cond_1
    move v0, v2

    .line 580
    goto :goto_0
.end method
