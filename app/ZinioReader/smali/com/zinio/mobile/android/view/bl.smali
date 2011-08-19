.class final Lcom/zinio/mobile/android/view/bl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bl;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 460
    check-cast p1, [Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bl;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v2

    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
