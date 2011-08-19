.class final Lcom/zinio/mobile/android/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/m;

.field private synthetic b:Lcom/zinio/mobile/android/view/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/BaseListActivity;Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zinio/mobile/android/view/x;->b:Lcom/zinio/mobile/android/view/BaseListActivity;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/x;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zinio/mobile/android/view/x;->b:Lcom/zinio/mobile/android/view/BaseListActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/BaseListActivity;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/x;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
