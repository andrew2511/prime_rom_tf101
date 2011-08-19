.class Lcom/android/inputmethod/voice/VoiceIMEConnector$1;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"

# interfaces
.implements Lcom/android/inputmethod/voice/Hints$Display;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showHint(I)V
    .locals 4
    .parameter "viewResource"

    .prologue
    const/4 v3, 0x1

    .line 127
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v1, v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$202(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)Z

    .line 131
    return-void
.end method
