.class final Lcom/zinio/mobile/android/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/zinio/mobile/android/view/e;->b:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/zinio/mobile/android/view/e;->b:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->d(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/e;->a:Z

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    .line 480
    return-void
.end method
