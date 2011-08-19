.class final Lcom/zinio/mobile/android/a/b/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/e;->b:Lcom/zinio/mobile/android/a/b/l;

    iput-object p2, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 663
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 668
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->z()Ljava/util/List;

    move-result-object v1

    .line 669
    if-eqz v1, :cond_0

    .line 670
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 672
    iget-object v3, p0, Lcom/zinio/mobile/android/a/b/e;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v4, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/u;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/u;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 670
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 676
    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/e;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 678
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/e;->b:Lcom/zinio/mobile/android/a/b/l;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/e;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 680
    :cond_1
    return-void
.end method
