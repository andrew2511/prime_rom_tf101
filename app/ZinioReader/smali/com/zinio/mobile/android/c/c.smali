.class final Lcom/zinio/mobile/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Z

.field private synthetic g:Z

.field private synthetic h:Lcom/zinio/mobile/android/c/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/c/e;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/zinio/mobile/android/c/c;->h:Lcom/zinio/mobile/android/c/e;

    iput-object p2, p0, Lcom/zinio/mobile/android/c/c;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/zinio/mobile/android/c/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zinio/mobile/android/c/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zinio/mobile/android/c/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zinio/mobile/android/c/c;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/zinio/mobile/android/c/c;->f:Z

    iput-boolean p8, p0, Lcom/zinio/mobile/android/c/c;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zinio/mobile/android/c/c;->h:Lcom/zinio/mobile/android/c/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/c/c;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zinio/mobile/android/c/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/zinio/mobile/android/c/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/c/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/zinio/mobile/android/c/c;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/c/c;->f:Z

    iget-boolean v7, p0, Lcom/zinio/mobile/android/c/c;->g:Z

    invoke-virtual/range {v0 .. v7}, Lcom/zinio/mobile/android/c/e;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 466
    return-void
.end method
