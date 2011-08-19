.class final Lcom/zinio/mobile/android/view/library/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/d;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/d;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/i;->a:Lcom/zinio/mobile/android/view/library/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/i;->a:Lcom/zinio/mobile/android/view/library/d;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 461
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 462
    return-void
.end method
