.class Lcom/google/android/youtube/videos/player/Director$7;
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
    .line 679
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$7;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$7;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    .line 682
    return-void
.end method
