.class Lcom/android/vending/MyDownloadsActivity$2;
.super Landroid/database/DataSetObserver;
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
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$2;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$2;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/MyDownloadsActivity;->access$300(Lcom/android/vending/MyDownloadsActivity;Z)V

    .line 238
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$2;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/MyDownloadsActivity;->access$300(Lcom/android/vending/MyDownloadsActivity;Z)V

    .line 243
    return-void
.end method
