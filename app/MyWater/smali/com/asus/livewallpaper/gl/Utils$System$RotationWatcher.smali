.class public final Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/Utils$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotationWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;
    }
.end annotation


# static fields
.field public static sSelf:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;


# instance fields
.field private mLocalWatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteWatcher:Landroid/view/IRotationWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->sSelf:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mRemoteWatcher:Landroid/view/IRotationWatcher;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mLocalWatchers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mLocalWatchers:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->sSelf:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;-><init>()V

    sput-object v0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->sSelf:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    .line 52
    :cond_0
    sget-object v0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->sSelf:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    return-object v0
.end method


# virtual methods
.method public disable(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mLocalWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public enable(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;)V
    .locals 5
    .parameter "watcher"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mLocalWatchers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mRemoteWatcher:Landroid/view/IRotationWatcher;

    if-nez v2, :cond_0

    .line 72
    :try_start_0
    new-instance v2, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$1;

    invoke-direct {v2, p0}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$1;-><init>(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;)V

    iput-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mRemoteWatcher:Landroid/view/IRotationWatcher;

    .line 83
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 84
    .local v0, W:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mRemoteWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #W:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 87
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "RotationWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to register rotation watcher:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mRemoteWatcher:Landroid/view/IRotationWatcher;

    .line 89
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->mLocalWatchers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
