.class final Lcom/zinio/mobile/android/view/library/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/b;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/b;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/w;->a:Lcom/zinio/mobile/android/view/library/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/w;->a:Lcom/zinio/mobile/android/view/library/b;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/b;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    .line 380
    return-void
.end method
