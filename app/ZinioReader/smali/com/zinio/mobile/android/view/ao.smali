.class final Lcom/zinio/mobile/android/view/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ao;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ao;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ao;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ao;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;II)V

    .line 177
    return-void
.end method
