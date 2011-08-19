.class final Lcom/zinio/mobile/android/view/library/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/r;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/r;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/v;->a:Lcom/zinio/mobile/android/view/library/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/v;->a:Lcom/zinio/mobile/android/view/library/r;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/r;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    .line 507
    return-void
.end method
