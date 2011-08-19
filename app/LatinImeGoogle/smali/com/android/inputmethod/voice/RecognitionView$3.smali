.class Lcom/android/inputmethod/voice/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showListening()V
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
    .line 145
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;I)I

    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method
