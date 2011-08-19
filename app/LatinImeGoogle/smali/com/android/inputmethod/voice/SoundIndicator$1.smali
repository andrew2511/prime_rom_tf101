.class Lcom/android/inputmethod/voice/SoundIndicator$1;
.super Ljava/lang/Object;
.source "SoundIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/SoundIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/SoundIndicator;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/SoundIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/inputmethod/voice/SoundIndicator$1;->this$0:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator$1;->this$0:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/SoundIndicator;->invalidate()V

    .line 64
    iget-object v0, p0, Lcom/android/inputmethod/voice/SoundIndicator$1;->this$0:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-static {v0}, Lcom/android/inputmethod/voice/SoundIndicator;->access$100(Lcom/android/inputmethod/voice/SoundIndicator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/voice/SoundIndicator$1;->this$0:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-static {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->access$000(Lcom/android/inputmethod/voice/SoundIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
