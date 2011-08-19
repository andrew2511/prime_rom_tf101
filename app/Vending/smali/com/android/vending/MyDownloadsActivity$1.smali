.class Lcom/android/vending/MyDownloadsActivity$1;
.super Landroid/database/ContentObserver;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$1;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$1;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v0}, Lcom/android/vending/MyDownloadsActivity;->access$200(Lcom/android/vending/MyDownloadsActivity;)Lcom/android/vending/adapters/MyDownloadsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method
