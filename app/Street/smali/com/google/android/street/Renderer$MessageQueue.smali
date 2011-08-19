.class Lcom/google/android/street/Renderer$MessageQueue;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageQueue"
.end annotation


# instance fields
.field mFree:Lcom/google/android/street/Renderer$Message;

.field mHead:Lcom/google/android/street/Renderer$Message;

.field mTail:Lcom/google/android/street/Renderer$Message;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/street/Renderer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/street/Renderer$MessageQueue;-><init>()V

    return-void
.end method


# virtual methods
.method get()Lcom/google/android/street/Renderer$Message;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mHead:Lcom/google/android/street/Renderer$Message;

    .line 263
    .local v0, m:Lcom/google/android/street/Renderer$Message;
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, v0, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    iput-object v1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mHead:Lcom/google/android/street/Renderer$Message;

    .line 265
    iput-object v2, v0, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    .line 266
    iget-object v1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mHead:Lcom/google/android/street/Renderer$Message;

    if-nez v1, :cond_0

    .line 267
    iput-object v2, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    .line 270
    :cond_0
    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mHead:Lcom/google/android/street/Renderer$Message;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recycle(Lcom/google/android/street/Renderer$Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mFree:Lcom/google/android/street/Renderer$Message;

    iput-object v0, p1, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mFree:Lcom/google/android/street/Renderer$Message;

    .line 259
    return-void
.end method

.method send(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mFree:Lcom/google/android/street/Renderer$Message;

    .line 223
    .local v0, m:Lcom/google/android/street/Renderer$Message;
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, v0, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    iput-object v1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mFree:Lcom/google/android/street/Renderer$Message;

    .line 225
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    .line 229
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/street/Renderer$Message;->set(IIILjava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    if-nez v1, :cond_1

    .line 231
    iput-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    iput-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mHead:Lcom/google/android/street/Renderer$Message;

    .line 236
    :goto_1
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/google/android/street/Renderer$Message;

    .end local v0           #m:Lcom/google/android/street/Renderer$Message;
    invoke-direct {v0}, Lcom/google/android/street/Renderer$Message;-><init>()V

    .restart local v0       #m:Lcom/google/android/street/Renderer$Message;
    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    iput-object v0, v1, Lcom/google/android/street/Renderer$Message;->next:Lcom/google/android/street/Renderer$Message;

    .line 234
    iput-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    goto :goto_1
.end method

.method sendCoalesce(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/street/Renderer$MessageQueue;->mTail:Lcom/google/android/street/Renderer$Message;

    .line 244
    .local v0, tail:Lcom/google/android/street/Renderer$Message;
    if-eqz v0, :cond_0

    .line 245
    iget v1, v0, Lcom/google/android/street/Renderer$Message;->what:I

    if-ne v1, p1, :cond_0

    .line 246
    iput p2, v0, Lcom/google/android/street/Renderer$Message;->arg1:I

    .line 247
    iput p3, v0, Lcom/google/android/street/Renderer$Message;->arg2:I

    .line 248
    iput-object p4, v0, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/street/Renderer$MessageQueue;->send(IIILjava/lang/Object;)V

    goto :goto_0
.end method
