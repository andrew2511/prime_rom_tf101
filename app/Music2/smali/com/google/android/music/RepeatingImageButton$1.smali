.class Lcom/google/android/music/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/google/android/music/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/music/RepeatingImageButton$1;->this$0:Lcom/google/android/music/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton$1;->this$0:Lcom/google/android/music/RepeatingImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/RepeatingImageButton;->access$000(Lcom/google/android/music/RepeatingImageButton;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton$1;->this$0:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/google/android/music/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/music/RepeatingImageButton$1;->this$0:Lcom/google/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/google/android/music/RepeatingImageButton$1;->this$0:Lcom/google/android/music/RepeatingImageButton;

    invoke-static {v1}, Lcom/google/android/music/RepeatingImageButton;->access$100(Lcom/google/android/music/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    return-void
.end method
