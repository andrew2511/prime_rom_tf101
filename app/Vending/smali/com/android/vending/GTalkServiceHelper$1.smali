.class Lcom/android/vending/GTalkServiceHelper$1;
.super Ljava/lang/Object;
.source "GTalkServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/GTalkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/GTalkServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/vending/GTalkServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/vending/GTalkServiceHelper$1;->this$0:Lcom/android/vending/GTalkServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper$1;->this$0:Lcom/android/vending/GTalkServiceHelper;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/GTalkServiceHelper;->access$002(Lcom/android/vending/GTalkServiceHelper;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 31
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper$1;->this$0:Lcom/android/vending/GTalkServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/GTalkServiceHelper;->access$002(Lcom/android/vending/GTalkServiceHelper;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 35
    return-void
.end method
