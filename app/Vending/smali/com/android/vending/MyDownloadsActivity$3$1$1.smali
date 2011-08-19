.class Lcom/android/vending/MyDownloadsActivity$3$1$1;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/MyDownloadsActivity$3$1;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$3$1$1;->this$2:Lcom/android/vending/MyDownloadsActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$3$1$1;->this$2:Lcom/android/vending/MyDownloadsActivity$3$1;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0}, Lcom/android/vending/MyDownloadsActivity;->refreshCheckedItem()V

    .line 384
    return-void
.end method
