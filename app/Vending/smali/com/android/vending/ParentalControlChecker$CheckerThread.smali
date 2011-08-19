.class Lcom/android/vending/ParentalControlChecker$CheckerThread;
.super Ljava/lang/Thread;
.source "ParentalControlChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/ParentalControlChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckerThread"
.end annotation


# instance fields
.field private mForeground:Z

.field final synthetic this$0:Lcom/android/vending/ParentalControlChecker;


# direct methods
.method public constructor <init>(Lcom/android/vending/ParentalControlChecker;Z)V
    .locals 1
    .parameter
    .parameter "foreground"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->this$0:Lcom/android/vending/ParentalControlChecker;

    .line 79
    const-string v0, "ParentalControlChecker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    iput-boolean p2, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->mForeground:Z

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v2}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v2

    const-string v3, "vending"

    invoke-static {v2, v3}, Lcom/google/android/common/ParentalControl;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v2}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v2

    const-string v3, "vending"

    invoke-static {v2, v3}, Lcom/google/android/common/ParentalControl;->getLandingPage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, landingPage:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v2}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/android/vending/ParentalControlChecker$PcResultHandler;

    iget-object v4, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->this$0:Lcom/android/vending/ParentalControlChecker;

    iget-boolean v5, p0, Lcom/android/vending/ParentalControlChecker$CheckerThread;->mForeground:Z

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/android/vending/ParentalControlChecker$PcResultHandler;-><init>(Lcom/android/vending/ParentalControlChecker;ZLandroid/net/Uri;Z)V

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->postRunnable(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
