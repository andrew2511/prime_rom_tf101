.class final Lcom/zinio/mobile/android/view/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bi;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bi;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->c()V

    .line 989
    return-void
.end method
