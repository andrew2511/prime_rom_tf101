.class Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/ChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    .line 139
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v0

    .line 151
    .local v0, oldOffTheRecord:Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;Z)V

    const-string v3, "requeryOtrCursor"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
