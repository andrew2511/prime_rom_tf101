.class Lcom/android/inputmethod/voice/RecognitionView$4;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iput-object p2, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;I)I

    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$500(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method
