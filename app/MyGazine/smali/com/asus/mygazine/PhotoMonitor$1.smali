.class Lcom/asus/mygazine/PhotoMonitor$1;
.super Landroid/database/ContentObserver;
.source "PhotoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/PhotoMonitor;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/PhotoMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor$1;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor$1;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/mygazine/PhotoMonitor;->access$000(Lcom/asus/mygazine/PhotoMonitor;I)V

    .line 80
    return-void
.end method
