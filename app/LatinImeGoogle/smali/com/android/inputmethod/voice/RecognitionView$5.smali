.class Lcom/android/inputmethod/voice/RecognitionView$5;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;

.field final synthetic val$speechEndPosition:I

.field final synthetic val$speechStartPosition:I

.field final synthetic val$waveBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iput-object p2, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$speechStartPosition:I

    iput p4, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$speechEndPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;I)I

    .line 177
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v4}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/inputmethod/voice/RecognitionView;->access$400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 181
    .local v0, buf:Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 183
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget v2, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$speechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/inputmethod/voice/RecognitionView$5;->val$speechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$600(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V

    .line 184
    return-void
.end method
