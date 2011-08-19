.class final Lcom/zinio/mobile/android/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/zinio/mobile/android/view/f;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/zinio/mobile/android/view/f;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->d(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    .line 492
    return-void
.end method
