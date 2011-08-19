.class Lcom/asus/reader/book/ReaderDatabase$1;
.super Landroid/os/CountDownTimer;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase;->addCandidateDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ReaderDatabase;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ReaderDatabase;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 483
    new-instance v0, Lcom/asus/reader/book/ReaderDatabase$1$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/ReaderDatabase$1$1;-><init>(Lcom/asus/reader/book/ReaderDatabase$1;)V

    .line 537
    .local v0, checkthread:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/asus/reader/book/ReaderDatabase$1;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/ReaderDatabase;->pushTask(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method
