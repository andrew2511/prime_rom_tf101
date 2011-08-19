.class Lcom/android/vending/ParentalControlChecker$PcResultHandler;
.super Ljava/lang/Object;
.source "ParentalControlChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/ParentalControlChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PcResultHandler"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mForeground:Z

.field private mLandingPage:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/vending/ParentalControlChecker;


# direct methods
.method public constructor <init>(Lcom/android/vending/ParentalControlChecker;ZLandroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "enabled"
    .parameter "landingPage"
    .parameter "foreground"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean p2, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mEnabled:Z

    .line 146
    iput-object p3, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mLandingPage:Landroid/net/Uri;

    .line 147
    iput-boolean p4, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mForeground:Z

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mForeground:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v0}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->hideIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v0}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    iget-object v3, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mLandingPage:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;-><init>(Lcom/android/vending/ParentalControlChecker;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/vending/ParentalControlChecker;->access$202(Z)Z

    .line 159
    iget-boolean v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->mForeground:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    iget-object v1, p0, Lcom/android/vending/ParentalControlChecker$PcResultHandler;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v1}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/ParentalControlChecker;->access$300(Lcom/android/vending/ParentalControlChecker;Lcom/android/vending/BaseActivity;)V

    goto :goto_0
.end method
