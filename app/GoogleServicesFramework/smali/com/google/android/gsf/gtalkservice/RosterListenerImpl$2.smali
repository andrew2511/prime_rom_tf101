.class Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IRosterListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;->this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IRosterListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;->this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->access$100(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, Lcom/google/android/gtalkservice/IRosterListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;->call(Lcom/google/android/gtalkservice/IRosterListener;)Z

    move-result v0

    return v0
.end method
