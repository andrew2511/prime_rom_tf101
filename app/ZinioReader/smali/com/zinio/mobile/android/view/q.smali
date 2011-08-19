.class final Lcom/zinio/mobile/android/view/q;
.super Lcom/zinio/mobile/android/util/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private a:I

.field private synthetic b:Lcom/zinio/mobile/android/view/bo;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/q;-><init>(Lcom/zinio/mobile/android/view/bo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/bo;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/zinio/mobile/android/view/q;->b:Lcom/zinio/mobile/android/view/bo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/util/c;-><init>(B)V

    .line 415
    const/16 v0, 0xc

    iput v0, p0, Lcom/zinio/mobile/android/view/q;->a:I

    .line 410
    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 419
    invoke-super {p0}, Lcom/zinio/mobile/android/util/c;->size()I

    move-result v0

    iget v1, p0, Lcom/zinio/mobile/android/view/q;->a:I

    if-le v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/zinio/mobile/android/util/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 425
    :cond_0
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/util/c;->a(Ljava/lang/Object;)Z

    .line 426
    const/4 v0, 0x1

    return v0
.end method
