.class final Lcom/zinio/mobile/android/view/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/m;

.field private synthetic b:Lcom/zinio/mobile/android/view/BaseActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/BaseActivity;Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bw;->b:Lcom/zinio/mobile/android/view/BaseActivity;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/bw;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bw;->b:Lcom/zinio/mobile/android/view/BaseActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/BaseActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bw;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
