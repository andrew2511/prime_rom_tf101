.class final Lcom/zinio/mobile/android/view/ax;
.super Lcom/zinio/mobile/android/view/cl;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ax;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/cl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ax;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->l()Z

    move-result v0

    .line 797
    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ax;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 800
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ax;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 804
    :cond_0
    return-void
.end method
