.class Lcom/google/android/youtube/videos/player/Director$6;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->showResumeTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$1302(Lcom/google/android/youtube/videos/player/Director;I)I

    .line 688
    const-string v0, "reset resume time to 0, user choice"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    .line 690
    return-void
.end method
