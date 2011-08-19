.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;
.super Landroid/os/Handler;
.source "RecognitionControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$100(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
