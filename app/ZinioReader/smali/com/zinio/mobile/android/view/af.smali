.class final Lcom/zinio/mobile/android/view/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/zinio/mobile/android/view/af;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zinio/mobile/android/view/af;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->finish()V

    .line 260
    return-void
.end method
