.class final Lcom/zinio/mobile/android/view/library/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;

.field private synthetic b:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic c:Lcom/zinio/mobile/android/view/library/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/n;->a:Lcom/zinio/mobile/android/a/b/l;

    iput-object p3, p0, Lcom/zinio/mobile/android/view/library/n;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/n;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 742
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 744
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->a()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 750
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->a()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 755
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/n;->c:Lcom/zinio/mobile/android/view/library/c;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
