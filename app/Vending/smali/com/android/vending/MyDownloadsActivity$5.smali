.class Lcom/android/vending/MyDownloadsActivity$5;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity;->checkinCompleted()V
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
    .line 754
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$5;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$5;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v0}, Lcom/android/vending/MyDownloadsActivity;->access$400(Lcom/android/vending/MyDownloadsActivity;)V

    .line 757
    return-void
.end method
