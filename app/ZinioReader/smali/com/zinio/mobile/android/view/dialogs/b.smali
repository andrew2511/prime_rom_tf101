.class public final Lcom/zinio/mobile/android/view/dialogs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/b;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/b;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/view/dialogs/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 723
    return-void
.end method
