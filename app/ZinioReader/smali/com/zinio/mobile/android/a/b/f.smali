.class final Lcom/zinio/mobile/android/a/b/f;
.super Lcom/zinio/mobile/android/resources/download/k;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/f;->a:Lcom/zinio/mobile/android/a/b/l;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/resources/download/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b_()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/f;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/f;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1052
    return-void
.end method
