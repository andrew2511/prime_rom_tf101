.class public final Lcom/zinio/mobile/android/view/dialogs/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private synthetic b:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/g;->b:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/g;->a:Landroid/app/Activity;

    .line 679
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 681
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 682
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 683
    return-void
.end method
