.class Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;
.super Ljava/lang/Object;
.source "LoggingService.java"

# interfaces
.implements Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/LoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteListener"
.end annotation


# instance fields
.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/logging/LoggingService;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    .line 553
    return-void
.end method


# virtual methods
.method public onSendCompleted(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$300(Lcom/google/android/voicesearch/logging/LoggingService;)V

    .line 560
    return-void
.end method
