.class final Lcom/zinio/mobile/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/c/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/zinio/mobile/android/c/a;->a:Lcom/zinio/mobile/android/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/zinio/mobile/android/c/a;->a:Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->i()V

    .line 853
    iget-object v0, p0, Lcom/zinio/mobile/android/c/a;->a:Lcom/zinio/mobile/android/c/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/e;)Z

    .line 854
    return-void
.end method
