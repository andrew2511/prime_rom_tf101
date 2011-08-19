.class final Lcom/zinio/mobile/android/view/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cb;->b:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    iput-boolean p2, p0, Lcom/zinio/mobile/android/view/cb;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cb;->b:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/cb;->a:Z

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    .line 264
    return-void
.end method
