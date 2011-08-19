.class Lcom/asus/vibe2/debug/DummyMyCloud$1;
.super Ljava/lang/Object;
.source "DummyMyCloud.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/debug/DummyMyCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/debug/DummyMyCloud;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$1;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "className"
    .parameter "service"

    .prologue
    .line 62
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 63
    return-void
.end method
