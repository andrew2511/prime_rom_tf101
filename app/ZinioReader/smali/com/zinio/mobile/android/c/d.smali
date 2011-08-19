.class final Lcom/zinio/mobile/android/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/zinio/mobile/android/c/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/c/e;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/zinio/mobile/android/c/d;->d:Lcom/zinio/mobile/android/c/e;

    iput-object p2, p0, Lcom/zinio/mobile/android/c/d;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/zinio/mobile/android/c/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zinio/mobile/android/c/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/zinio/mobile/android/c/d;->d:Lcom/zinio/mobile/android/c/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/c/d;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zinio/mobile/android/c/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/zinio/mobile/android/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zinio/mobile/android/c/e;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method
