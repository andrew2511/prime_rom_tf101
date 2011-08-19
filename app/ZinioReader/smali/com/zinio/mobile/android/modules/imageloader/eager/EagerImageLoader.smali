.class public Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/modules/imageloader/a;


# static fields
.field static a:J


# instance fields
.field b:Lcom/zinio/mobile/android/modules/imageloader/eager/b;

.field private c:Lcom/zinio/mobile/android/modules/imageloader/b;

.field private d:Lcom/zinio/mobile/android/modules/imageloader/eager/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/zinio/mobile/android/modules/imageloader/b;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->c:Lcom/zinio/mobile/android/modules/imageloader/b;

    .line 41
    new-instance v0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;-><init>(Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->d:Lcom/zinio/mobile/android/modules/imageloader/eager/a;

    .line 42
    new-instance v0, Lcom/zinio/mobile/android/modules/imageloader/eager/b;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;-><init>(Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->b:Lcom/zinio/mobile/android/modules/imageloader/eager/b;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->d:Lcom/zinio/mobile/android/modules/imageloader/eager/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(Lcom/zinio/mobile/android/view/issue/d;)V

    .line 485
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 3
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->b:Lcom/zinio/mobile/android/modules/imageloader/eager/b;

    sget-wide v1, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a(Lcom/zinio/mobile/android/view/issue/d;J)V

    .line 489
    return-void
.end method

.method protected final declared-synchronized c(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->c:Lcom/zinio/mobile/android/modules/imageloader/b;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/modules/imageloader/b;->a(Lcom/zinio/mobile/android/view/issue/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
