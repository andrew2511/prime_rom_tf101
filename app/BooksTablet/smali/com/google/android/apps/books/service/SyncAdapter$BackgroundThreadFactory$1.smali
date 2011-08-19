.class Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;->this$0:Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;

    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    return-void
.end method
