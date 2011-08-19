.class final Lcom/zinio/mobile/android/a/b/j;
.super Lcom/zinio/mobile/android/resources/download/b;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/j;->b:Lcom/zinio/mobile/android/a/b/l;

    iput p8, p0, Lcom/zinio/mobile/android/a/b/j;->a:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zinio/mobile/android/resources/download/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b_()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/j;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/j;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget v2, p0, Lcom/zinio/mobile/android/a/b/j;->a:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    return-void
.end method
