.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)V
    .locals 0
    .parameter "connection"
    .parameter "error"

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 233
    return-void
.end method
