.class Lcom/google/android/youtube/videos/player/Director$10;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->showShortClockConfirmationDialog()V
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
    .line 701
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$10;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$10;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$1502(Lcom/google/android/youtube/videos/player/Director;Z)Z

    .line 704
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$10;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1600(Lcom/google/android/youtube/videos/player/Director;)V

    .line 705
    return-void
.end method
