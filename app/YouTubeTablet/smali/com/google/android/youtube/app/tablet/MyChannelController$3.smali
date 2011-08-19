.class Lcom/google/android/youtube/app/tablet/MyChannelController$3;
.super Ljava/lang/Object;
.source "MyChannelController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$3;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 336
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$3;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->deleteSelectedVideo()V

    .line 339
    :cond_0
    return-void
.end method
