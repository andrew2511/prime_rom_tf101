.class final Lcom/zinio/mobile/android/view/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ah;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/view/issue/TextModeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/issue/TextModeView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    const-string v1, "down"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    const-string v1, "down"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/lang/String;)V

    move v0, v2

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->d(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    const-string v2, "up"

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->a(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cx;->a:Lcom/zinio/mobile/android/view/ah;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->c(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Lcom/zinio/mobile/android/view/issue/TextModeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/TextModeView;->clearFocus()V

    .line 145
    return-void
.end method
