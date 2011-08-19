.class Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->schedulePresenceNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->access$302(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Z)Z

    .line 208
    return-void
.end method
