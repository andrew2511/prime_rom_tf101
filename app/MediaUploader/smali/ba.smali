.class final Lba;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lba;->a:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    iget-object v0, p0, Lba;->a:Landroid/content/ContentResolver;

    sget-object v1, LaZ;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lbb;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lbb;-><init>(Lba;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 74
    return-void
.end method
