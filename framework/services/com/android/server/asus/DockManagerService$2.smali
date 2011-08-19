.class Lcom/android/server/asus/DockManagerService$2;
.super Landroid/database/ContentObserver;
.source "DockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asus/DockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$2;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$2;->this$0:Lcom/android/server/asus/DockManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/asus/DockManagerService;->updateBatterySavingMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/asus/DockManagerService;->access$100(Lcom/android/server/asus/DockManagerService;Z)V

    .line 218
    return-void
.end method
