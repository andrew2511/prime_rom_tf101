.class final Lcom/zinio/mobile/android/view/by;
.super Lcom/zinio/mobile/android/view/cl;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/cl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 936
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ******************* onConnectionLost:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->l()Z

    move-result v0

    .line 939
    iget-object v1, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v1

    .line 943
    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->f(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    .line 946
    iget-object v0, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 950
    :cond_0
    if-eqz v1, :cond_1

    .line 951
    iget-object v0, p0, Lcom/zinio/mobile/android/view/by;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 953
    :cond_1
    return-void
.end method
