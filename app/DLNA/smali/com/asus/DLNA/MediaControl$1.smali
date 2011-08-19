.class Lcom/asus/DLNA/MediaControl$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/MediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/MediaControl;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/MediaControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/asus/DLNA/MediaControl$1;->this$0:Lcom/asus/DLNA/MediaControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl$1;->this$0:Lcom/asus/DLNA/MediaControl;

    invoke-static {p2}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/DLNA/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/DLNA/MediaControl;->access$002(Lcom/asus/DLNA/MediaControl;Lcom/asus/DLNA/IMusicPlaybackService;)Lcom/asus/DLNA/IMusicPlaybackService;

    .line 1035
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl$1;->this$0:Lcom/asus/DLNA/MediaControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/DLNA/MediaControl;->access$002(Lcom/asus/DLNA/MediaControl;Lcom/asus/DLNA/IMusicPlaybackService;)Lcom/asus/DLNA/IMusicPlaybackService;

    .line 1039
    return-void
.end method
