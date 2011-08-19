.class final Lcom/zinio/mobile/android/view/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Lcom/zinio/mobile/android/view/IssueTextModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ad;->b:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/ad;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ad;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 590
    return-void
.end method
