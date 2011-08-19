.class public Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;
.super Ljava/lang/Object;
.source "BackgroundRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final MSG_END:I = 0x2

.field private static final MSG_ERROR:I = 0x1

.field private static final MSG_LEVEL:I = 0x4

.field private static final MSG_READY:I = 0x3

.field private static final MSG_RESULTS:I


# instance fields
.field private mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/speech/RecognitionListener;

.field private mResultListener:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;Lcom/google/android/voicesearch/speechservice/RecognitionController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;-><init>(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;-><init>(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mListener:Landroid/speech/RecognitionListener;

    .line 127
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 128
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mResultListener:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mResultListener:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static createStandardIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    const-string v1, "contact_auth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string v1, "fullRecognitionResultsRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onPause()V

    .line 137
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V

    .line 133
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->mListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onCancel(Landroid/speech/RecognitionListener;)V

    .line 141
    return-void
.end method
