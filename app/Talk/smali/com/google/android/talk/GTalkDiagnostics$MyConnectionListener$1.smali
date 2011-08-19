.class Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener$1;
.super Ljava/lang/Object;
.source "GTalkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener$1;->this$1:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener$1;->this$1:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;->this$0:Lcom/google/android/talk/GTalkDiagnostics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/GTalkDiagnostics;->access$000(Lcom/google/android/talk/GTalkDiagnostics;Z)V

    .line 72
    return-void
.end method
