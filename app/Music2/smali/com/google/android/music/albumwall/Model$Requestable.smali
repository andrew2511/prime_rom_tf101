.class Lcom/google/android/music/albumwall/Model$Requestable;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Requestable"
.end annotation


# instance fields
.field private mReceived:Z

.field private mRequest:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>()V

    return-void
.end method


# virtual methods
.method final clear()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$Requestable;->isRequestOutstanding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request outstanding."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 199
    return-void
.end method

.method final invalidate()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 164
    return-void
.end method

.method final isRequestOutstanding()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isValid()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    return v0
.end method

.method final peekNeedsRequest()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setReceived()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 188
    return-void
.end method

.method final setRequest(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$Requestable;->peekNeedsRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t need a request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 179
    return-void
.end method

.method final setRequestFailed()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 192
    return-void
.end method
