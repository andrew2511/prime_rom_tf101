.class Lcom/android/inputmethod/latin/CandidateView$UiHandler;
.super Landroid/os/Handler;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CandidateView;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/CandidateView;Lcom/android/inputmethod/latin/CandidateView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;-><init>(Lcom/android/inputmethod/latin/CandidateView;)V

    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->cancelHidePreview()V

    .line 116
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->cancelUpdateSuggestions()V

    .line 117
    return-void
.end method

.method public cancelHidePreview()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->removeMessages(I)V

    .line 102
    return-void
.end method

.method public cancelUpdateSuggestions()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->removeMessages(I)V

    .line 112
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$100(Lcom/android/inputmethod/latin/CandidateView;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$200(Lcom/android/inputmethod/latin/CandidateView;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postHidePreview()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->cancelHidePreview()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    return-void
.end method

.method public postUpdateSuggestions()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->cancelUpdateSuggestions()V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    return-void
.end method
