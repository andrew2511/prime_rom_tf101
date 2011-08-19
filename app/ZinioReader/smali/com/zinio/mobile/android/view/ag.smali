.class final Lcom/zinio/mobile/android/view/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ag;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ag;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ag;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V

    .line 111
    :cond_0
    return-void
.end method
