.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->close()V

    .line 504
    return-void
.end method
