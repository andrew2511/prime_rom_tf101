.class Lcom/android/inputmethod/voice/RecognitionView$6;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$700(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/SoundIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 352
    return-void
.end method
