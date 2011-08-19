.class final Lcom/zinio/mobile/android/view/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/c;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bp;->a:Lcom/zinio/mobile/android/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bp;->a:Lcom/zinio/mobile/android/view/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/c;->invalidateSelf()V

    .line 101
    return-void
.end method
