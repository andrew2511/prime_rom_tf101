.class final Lcom/zinio/mobile/android/view/dialogs/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/DialogActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/n;->a:Lcom/zinio/mobile/android/view/dialogs/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/n;->a:Lcom/zinio/mobile/android/view/dialogs/DialogActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->a(Lcom/zinio/mobile/android/view/dialogs/DialogActivity;)V

    .line 53
    return-void
.end method
